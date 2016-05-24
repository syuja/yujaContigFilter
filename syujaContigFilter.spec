/*
A KBase module: syujaContigFilter
*/

module syujaContigFilter {

	typedef string contigset_id;
	typedef structure{
		int contig_count;
		int filtered_contig_count;
	}FilterContigResults;
	
	funcdef filter_contigs(string workspace_name, contigset_id contigset)
		returns (FilterContigResults) authentication required;

};
