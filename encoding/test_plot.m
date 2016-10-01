function [] = test_plot( i )
% i is the block number
global address_17 blocks_17

[D ~] = test_distance(blocks_17{i} , address_17);

stairs(D, 'b')
title(['Block\_' num2str(i) ', average distance: ' num2str(mean(D))])
xlabel('Starting point for a subword of length 16 bps')
ylabel('Minimum Hamming distance')


end

